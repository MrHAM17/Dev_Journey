package com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSelectpaymentmethodBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.`data`.model.SelectpaymentmethodRowModel
import kotlin.Int
import kotlin.collections.List

class SelectPaymentMethodAdapter(
  var list: List<SelectpaymentmethodRowModel>
) : RecyclerView.Adapter<SelectPaymentMethodAdapter.RowSelectpaymentmethodVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSelectpaymentmethodVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_selectpaymentmethod,parent,false)
    return RowSelectpaymentmethodVH(view)
  }

  override fun onBindViewHolder(holder: RowSelectpaymentmethodVH, position: Int) {
    val selectpaymentmethodRowModel = SelectpaymentmethodRowModel()
    // TODO uncomment following line after integration with data source
    // val selectpaymentmethodRowModel = list[position]
    holder.binding.selectpaymentmethodRowModel = selectpaymentmethodRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SelectpaymentmethodRowModel>) {
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
      item: SelectpaymentmethodRowModel
    ) {
    }
  }

  inner class RowSelectpaymentmethodVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSelectpaymentmethodBinding = RowSelectpaymentmethodBinding.bind(itemView)
  }
}
