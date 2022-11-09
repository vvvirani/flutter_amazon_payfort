package com.vvvirani.amazon_payfort

import android.content.Context
import androidx.annotation.NonNull
import com.payfort.fortpaymentsdk.FortSdk
import com.payfort.fortpaymentsdk.domain.model.FortRequest
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler

class AmazonPayfortPlugin : FlutterPlugin,
    MethodCallHandler, ActivityAware {

    private lateinit var channel: MethodChannel

    private lateinit var context: Context
    private lateinit var binding: ActivityPluginBinding

    private var fortRequest = FortRequest()
    private var service: PayFortService = PayFortService()

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger,
            "vvvirani/amazon_payfort")
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: MethodChannel.Result) {
        when (call.method) {
            "initialize" -> {
                try {
                    val options = processPayFortOptions(call)
                    service.initService(channel, options)
                    binding.addActivityResultListener { requestCode, resultCode, data ->
                        service.onActivityResult(requestCode, resultCode, data)
                        true
                    }
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
                            service.createSignature(it,
                                it1)
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

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun createRequestMap(call: MethodCall): MutableMap<String, Any?> {
        val requestMap: MutableMap<String, Any?> = HashMap()
        requestMap["command"] = "PURCHASE"
        requestMap["customer_name"] = call.argument<String>("customer_name")
        requestMap["customer_email"] = call.argument<String>("customer_email")
        requestMap["currency"] = call.argument<String>("currency")
        requestMap["amount"] = call.argument<String>("amount")
        requestMap["language"] = call.argument<String>("language")
        requestMap["merchant_reference"] = call.argument<String>("merchant_reference")
        requestMap["order_description"] = call.argument<String>("order_description")
        requestMap["sdk_token"] = call.argument<String>("sdk_token")
        requestMap["token_name"] = call.argument<String>("token_name")
        requestMap["payment_option"] = call.argument<String>("payment_option")
        requestMap["eci"] = call.argument<String>("eci")
        requestMap["customer_ip"] = call.argument<String>("customer_ip")
        requestMap["phone_number"] = call.argument<String>("phone_number")
        return requestMap
    }

    private fun processPayFortOptions(call: MethodCall): PayFortOptions {
        return PayFortOptions(
            environment = call.argument<String>("environment") ?: "",
            showLoading = call.argument<Boolean>("showLoading") ?: true,
            isShowResponsePage = call.argument<Boolean>("isShowResponsePage") ?: true,
        )
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        this.binding = binding
    }

    override fun onDetachedFromActivityForConfigChanges() {
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        this.binding = binding
    }

    override fun onDetachedFromActivity() {
    }
}