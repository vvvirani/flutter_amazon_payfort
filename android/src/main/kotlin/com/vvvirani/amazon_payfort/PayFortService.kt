package com.vvvirani.amazon_payfort

import android.app.Activity
import android.content.Intent
import android.util.Log

import com.payfort.fortpaymentsdk.FortSdk
import com.payfort.fortpaymentsdk.callbacks.FortCallBackManager
import com.payfort.fortpaymentsdk.callbacks.FortInterfaces
import com.payfort.fortpaymentsdk.domain.model.FortRequest
import com.payfort.fortpaymentsdk.exceptions.FortException
import io.flutter.plugin.common.MethodChannel
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException

class PayFortService {

     val payfortRequestCode = 1166

    private var options: PayFortOptions? = null

    private var channel: MethodChannel? = null

    private var tag = this.javaClass.simpleName

    private var fortCallback: FortCallBackManager? = null


    fun initService(channel: MethodChannel, options: PayFortOptions) {
        if (fortCallback == null) {
            fortCallback = FortCallBackManager.Factory.create()
        }
        this.options = options
        this.channel = channel
    }

    fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if (fortCallback != null) {
            fortCallback?.onActivityResult(requestCode, resultCode, data)
        }

    }

    fun callPayFort(
        activity: Activity,
        fortRequest: FortRequest,
    ) {
        fortRequest.isShowResponsePage = options?.isShowResponsePage ?: true
        try {
            FortSdk.getInstance().registerCallback(
                activity,
                fortRequest,
                getEnvironment(options?.environment), payfortRequestCode,
                fortCallback,
                options?.showLoading ?: true,
                object : FortInterfaces.OnTnxProcessed {
                    override fun onSuccess(
                        requestDic: MutableMap<String, Any>?,
                        responeDic: MutableMap<String, Any>?,
                    ) {
                        Log.d(tag, "onSuccess : $requestDic $responeDic")
                        channel?.invokeMethod("succeeded", responeDic)
                        return
                    }

                    override fun onFailure(
                        requestDic: MutableMap<String, Any>?,
                        responeDic: MutableMap<String, Any>?,
                    ) {
                        Log.d(tag, "onFailure : $requestDic $responeDic")
                        val result: MutableMap<String, Any?> = HashMap()
                        result["message"] = responeDic?.get("response_message")
                        channel?.invokeMethod("failed", result)
                        return
                    }

                    override fun onCancel(
                        requestDic: MutableMap<String, Any>?,
                        responeDic: MutableMap<String, Any>?,
                    ) {
                        Log.d(tag, "onCancel : $requestDic $responeDic")
                        channel?.invokeMethod("cancelled", null)
                        return
                    }
                },
            )
        } catch (e: FortException) {
            Log.d(tag, "FortException : ${e.code}, ${e.message}")
        }
    }

    private fun getEnvironment(environment: String?): String {
        return when (environment) {
            "test" -> {
                return FortSdk.ENVIRONMENT.TEST
            }
            "production" -> {
                return FortSdk.ENVIRONMENT.PRODUCTION
            }
            else -> FortSdk.ENVIRONMENT.TEST
        }
    }

    fun createSignature(shaType: String, concatenatedString: String): String? {
        try {
            val bytes = concatenatedString.toByteArray()
            val md = MessageDigest.getInstance(shaType)
            val digest = md.digest(bytes)
            return digest.fold("") { str, it -> str + "%02x".format(it) }
        } catch (e: NoSuchAlgorithmException) {
            Log.d("Signature Error", e.toString())
        }
        return null
    }

}