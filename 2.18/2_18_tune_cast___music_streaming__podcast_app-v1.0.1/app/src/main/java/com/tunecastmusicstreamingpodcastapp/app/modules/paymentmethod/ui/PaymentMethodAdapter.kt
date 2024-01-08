package com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPaymentmethodBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.`data`.model.PaymentmethodRowModel
import kotlin.Int
import kotlin.collections.List

class PaymentMethodAdapter(
  var list: List<PaymentmethodRowModel>
) : RecyclerView.Adapter<PaymentMethodAdapter.RowPaymentmethodVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPaymentmethodVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_paymentmethod,parent,false)
    return RowPaymentmethodVH(view)
  }

  override fun onBindViewHolder(holder: RowPaymentmethodVH, position: Int) {
    val paymentmethodRowModel = PaymentmethodRowModel()
    // TODO uncomment following line after integration with data source
    // val paymentmethodRowModel = list[position]
    holder.binding.paymentmethodRowModel = paymentmethodRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PaymentmethodRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: PaymentmethodRowModel
    ) {
    }
  }

  inner class RowPaymentmethodVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPaymentmethodBinding = RowPaymentmethodBinding.bind(itemView)
  }
}
