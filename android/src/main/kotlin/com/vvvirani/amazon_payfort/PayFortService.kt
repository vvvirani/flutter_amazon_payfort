package com.vvvirani.amazon_payfort

import android.app.Activity
import android.content.Intent
import android.util.Log

import com.payfort.fortpaymentsdk.FortSdk
import com.payfort.fortpaymentsdk.callbacks.FortCallBackManager
import com.payfort.fortpaymentsdk.callbacks.FortInterfaces
import com.payfort.fortpaymentsdk.domain.model.FortRequest
import com.payfort.fortpaymentsdk.exceptions.FortException
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException

class PayFortService {

    private var options: PayFortOptions? = null

    private var tag = this.javaClass.simpleName

    private var fortCallback: FortCallBackManager? = null

    interface PayFortResultHandler {
        fun onResult(fortResult: MutableMap<String, Any>?)
    }

    fun initService(options: PayFortOptions) {
        if (fortCallback == null) {
            fortCallback = FortCallBackManager.Factory.create()
        }
        this.options = options
    }

    fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        fortCallback?.onActivityResult(requestCode, resultCode, data)
    }

    fun callPayFort(
        activity: Activity,
        fortRequest: FortRequest,
        result: PayFortResultHandler,
    ) {
        fortRequest.isShowResponsePage = options?.isShowResponsePage ?: true
        try {
            FortSdk.getInstance().registerCallback(
                activity,
                fortRequest,
                getEnvironment(options?.environment), 5,
                fortCallback,
                options?.showLoading ?: true,
                object : FortInterfaces.OnTnxProcessed {
                    override fun onSuccess(
                        requestDic: MutableMap<String, Any>?,
                        responeDic: MutableMap<String, Any>?,
                    ) {
                        Log.d(tag, "onSuccess : $requestDic $responeDic")
                        responeDic?.set("response_status", 0)
                        result.onResult(responeDic)
                    }

                    override fun onFailure(
                        requestDic: MutableMap<String, Any>?,
                        responeDic: MutableMap<String, Any>?,
                    ) {
                        Log.d(tag, "onFailure : $requestDic $responeDic")
                        responeDic?.set("response_status", 2)
                        result.onResult(responeDic)
                    }

                    override fun onCancel(
                        requestDic: MutableMap<String, Any>?,
                        responeDic: MutableMap<String, Any>?,
                    ) {
                        Log.d(tag, "onCancel : $requestDic $responeDic")
                        responeDic?.set("response_status", 1)
                        result.onResult(responeDic)
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

    fun createSignature(shaType: String, concatenatedString: String): String {
        try {
            val bytes = concatenatedString.toByteArray()
            val md = MessageDigest.getInstance(shaType)
            val digest = md.digest(bytes)
            return digest.fold("") { str, it -> str + "%02x".format(it) }
        } catch (e: NoSuchAlgorithmException) {
            Log.d("Signature Error", e.toString())
        }
        return ""
    }

}