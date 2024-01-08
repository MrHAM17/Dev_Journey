package com.comforthotelbookingapp.app.modules.refundmethod.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowRefundmethodBinding
import com.comforthotelbookingapp.app.modules.refundmethod.`data`.model.RefundmethodRowModel
import kotlin.Int
import kotlin.collections.List

class RefundMethodAdapter(
  var list: List<RefundmethodRowModel>
) : RecyclerView.Adapter<RefundMethodAdapter.RowRefundmethodVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowRefundmethodVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_refundmethod,parent,false)
    return RowRefundmethodVH(view)
  }

  override fun onBindViewHolder(holder: RowRefundmethodVH, position: Int) {
    val refundmethodRowModel = RefundmethodRowModel()
    // TODO uncomment following line after integration with data source
    // val refundmethodRowModel = list[position]
    holder.binding.refundmethodRowModel = refundmethodRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<RefundmethodRowModel>) {
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
      item: RefundmethodRowModel
    ) {
    }
  }

  inner class RowRefundmethodVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowRefundmethodBinding = RowRefundmethodBinding.bind(itemView)
  }
}
