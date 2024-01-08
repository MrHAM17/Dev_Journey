package com.vertexrealestateapp.app.modules.selectvirtualapp.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowSelectvirtualappBinding
import com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.model.SelectvirtualappRowModel
import kotlin.Int
import kotlin.collections.List

class SelectVirtualAppAdapter(
  var list: List<SelectvirtualappRowModel>
) : RecyclerView.Adapter<SelectVirtualAppAdapter.RowSelectvirtualappVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSelectvirtualappVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_selectvirtualapp,parent,false)
    return RowSelectvirtualappVH(view)
  }

  override fun onBindViewHolder(holder: RowSelectvirtualappVH, position: Int) {
    val selectvirtualappRowModel = SelectvirtualappRowModel()
    // TODO uncomment following line after integration with data source
    // val selectvirtualappRowModel = list[position]
    holder.binding.selectvirtualappRowModel = selectvirtualappRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SelectvirtualappRowModel>) {
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
      item: SelectvirtualappRowModel
    ) {
    }
  }

  inner class RowSelectvirtualappVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSelectvirtualappBinding = RowSelectvirtualappBinding.bind(itemView)
  }
}
