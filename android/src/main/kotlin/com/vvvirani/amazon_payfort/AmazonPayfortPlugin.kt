package com.vvvirani.amazon_payfort

import android.app.Activity.RESULT_OK
import android.content.Context
import android.content.Intent
import com.payfort.fortpaymentsdk.FortSdk
import com.payfort.fortpaymentsdk.domain.model.FortRequest
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener

class AmazonPayfortPlugin : FlutterPlugin,
    MethodCallHandler, ActivityAware, ActivityResultListener {

    private lateinit var channel: MethodChannel

    private lateinit var context: Context
    private lateinit var binding: ActivityPluginBinding

    private var fortRequest = FortRequest()
    private var service: PayFortService = PayFortService()

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(
            flutterPluginBinding.binaryMessenger,
            "vvvirani/amazon_payfort"
        )
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "initialize" -> {
                try {
                    val options = processPayFortOptions(call)
                    service.initService(channel, options)
                    result.success(true)
                } catch (e: Exception) {
                    result.success(false)
                }
            }

            "getDeviceId" -> {
                val deviceId = FortSdk.getDeviceId(binding.activity)
                result.success(deviceId)
            }

            "generateSignature" -> {
                val shaType = call.argument<String>("shaType")
                val concatenatedString = call.argument<String>("concatenatedString")
                val signature =
                    shaType?.let {
                        concatenatedString?.let { it1 ->
                            service.createSignature(
                                it,
                                it1
                            )
                        }
                    }
                result.success(signature)
            }

            "callPayFort" -> {
                fortRequest.requestMap = createRequestMap(call)
                service.callPayFort(
                    binding.activity,
                    fortRequest
                )
            }

            else -> {
                result.notImplemented()
            }
        }
    }


    private fun createRequestMap(call: MethodCall): MutableMap<String, Any?> {
        val requestMap: MutableMap<String, Any?> = HashMap()
        requestMap["command"] = "PURCHASE"
        requestMap["customer_name"] = call.argument<String>("customer_name")
        requestMap["customer_email"] = call.argument<String>("customer_email")
        requestMap["currency"] = call.argument<String>("currency")
        requestMap["amount"] = call.argument<String>("amount")
        requestMap["language"] = call.argument<String>("language")
        requestMap["order_description"] = call.argument<String>("order_description")
        requestMap["sdk_token"] = call.argument<String>("sdk_token")
        requestMap["customer_ip"] = call.argument<String>("customer_ip")
        requestMap["merchant_reference"] = call.argument<String>("merchant_reference")

        val paymentOption = call.argument<String?>("payment_option")
        if (paymentOption != null) {
            requestMap["payment_option"] = paymentOption
        }

        val eci = call.argument<String?>("eci")
        if (eci != null) {
            requestMap["eci"] = eci
        }

        val tokenName = call.argument<String?>("token_name")
        if (tokenName != null) {
            requestMap["tokenName"] = tokenName
        }

        val phoneNumber = call.argument<String?>("phone_number")
        if (tokenName != null) {
            requestMap["phone_number"] = phoneNumber
        }

        return requestMap
    }


    private fun processPayFortOptions(call: MethodCall): PayFortOptions {
        return PayFortOptions(
            environment = call.argument<String>("environment") ?: "",
            showLoading = call.argument<Boolean>("showLoading") ?: true,
            isShowResponsePage = call.argument<Boolean>("isShowResponsePage") ?: true,
        )
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        this.binding = binding
        binding.addActivityResultListener { requestCode: Int, resultCode: Int, data: Intent? ->
            onActivityResult(requestCode, resultCode, data)
        }
    }

    override fun onDetachedFromActivityForConfigChanges() {
        binding.removeActivityResultListener { requestCode: Int, resultCode: Int, data: Intent? ->
            onActivityResult(requestCode, resultCode, data)
        }
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        this.binding = binding
        binding.addActivityResultListener { requestCode: Int, resultCode: Int, data: Intent? ->
            onActivityResult(requestCode, resultCode, data)
        }
    }

    override fun onDetachedFromActivity() {
        binding.removeActivityResultListener { requestCode: Int, resultCode: Int, data: Intent? ->
            onActivityResult(requestCode, resultCode, data)
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        service.onActivityResult(requestCode, resultCode, data)
        return true
    }
}