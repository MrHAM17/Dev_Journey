package com.helthiotelehealth.app.modules.mycart.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.databinding.RowDurgsBinding
import com.helthiotelehealth.app.modules.mycart.`data`.model.DurgsRowModel
import kotlin.Int
import kotlin.collections.List

class DurgsAdapter(
  var list: List<DurgsRowModel>
) : RecyclerView.Adapter<DurgsAdapter.RowDurgsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDurgsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_durgs,parent,false)
    return RowDurgsVH(view)
  }

  override fun onBindViewHolder(holder: RowDurgsVH, position: Int) {
    val durgsRowModel = DurgsRowModel()
    // TODO uncomment following line after integration with data source
    // val durgsRowModel = list[position]
    holder.binding.durgsRowModel = durgsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<DurgsRowModel>) {
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
      item: DurgsRowModel
    ) {
    }
  }

  inner class RowDurgsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDurgsBinding = RowDurgsBinding.bind(itemView)
  }
}
