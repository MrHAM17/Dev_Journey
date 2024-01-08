package com.comforthotelbookingapp.app.modules.choosepaymentmethod.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowChoosepaymentmethodBinding
import com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.model.ChoosepaymentmethodRowModel
import kotlin.Int
import kotlin.collections.List

class ChoosePaymentMethodAdapter(
  var list: List<ChoosepaymentmethodRowModel>
) : RecyclerView.Adapter<ChoosePaymentMethodAdapter.RowChoosepaymentmethodVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowChoosepaymentmethodVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_choosepaymentmethod,parent,false)
    return RowChoosepaymentmethodVH(view)
  }

  override fun onBindViewHolder(holder: RowChoosepaymentmethodVH, position: Int) {
    val choosepaymentmethodRowModel = ChoosepaymentmethodRowModel()
    // TODO uncomment following line after integration with data source
    // val choosepaymentmethodRowModel = list[position]
    holder.binding.choosepaymentmethodRowModel = choosepaymentmethodRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ChoosepaymentmethodRowModel>) {
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
      item: ChoosepaymentmethodRowModel
    ) {
    }
  }

  inner class RowChoosepaymentmethodVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowChoosepaymentmethodBinding = RowChoosepaymentmethodBinding.bind(itemView)
  }
}
