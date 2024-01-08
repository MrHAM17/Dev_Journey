package com.jusplaymoviestreamingapp.app.modules.paymentmethod.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowPaymentmethodlistBinding
import com.jusplaymoviestreamingapp.app.modules.paymentmethod.`data`.model.PaymentmethodlistRowModel
import kotlin.Int
import kotlin.collections.List

class PaymentMethodListAdapter(
  var list: List<PaymentmethodlistRowModel>
) : RecyclerView.Adapter<PaymentMethodListAdapter.RowPaymentmethodlistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPaymentmethodlistVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_paymentmethodlist,parent,false)
    return RowPaymentmethodlistVH(view)
  }

  override fun onBindViewHolder(holder: RowPaymentmethodlistVH, position: Int) {
    val paymentmethodlistRowModel = PaymentmethodlistRowModel()
    // TODO uncomment following line after integration with data source
    // val paymentmethodlistRowModel = list[position]
    holder.binding.paymentmethodlistRowModel = paymentmethodlistRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PaymentmethodlistRowModel>) {
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
      item: PaymentmethodlistRowModel
    ) {
    }
  }

  inner class RowPaymentmethodlistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPaymentmethodlistBinding = RowPaymentmethodlistBinding.bind(itemView)
  }
}
