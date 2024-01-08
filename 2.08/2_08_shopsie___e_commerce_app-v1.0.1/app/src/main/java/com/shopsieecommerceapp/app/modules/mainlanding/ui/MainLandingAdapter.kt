package com.shopsieecommerceapp.app.modules.mainlanding.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowMainlandingBinding
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.MainlandingRowModel
import kotlin.Int
import kotlin.collections.List

class MainLandingAdapter(
  var list: List<MainlandingRowModel>
) : RecyclerView.Adapter<MainLandingAdapter.RowMainlandingVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMainlandingVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_mainlanding,parent,false)
    return RowMainlandingVH(view)
  }

  override fun onBindViewHolder(holder: RowMainlandingVH, position: Int) {
    val mainlandingRowModel = MainlandingRowModel()
    // TODO uncomment following line after integration with data source
    // val mainlandingRowModel = list[position]
    holder.binding.mainlandingRowModel = mainlandingRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MainlandingRowModel>) {
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
      item: MainlandingRowModel
    ) {
    }
  }

  inner class RowMainlandingVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMainlandingBinding = RowMainlandingBinding.bind(itemView)
  }
}
