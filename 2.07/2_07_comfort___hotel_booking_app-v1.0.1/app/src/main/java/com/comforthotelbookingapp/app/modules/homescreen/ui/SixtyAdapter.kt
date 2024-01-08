package com.comforthotelbookingapp.app.modules.homescreen.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowSixtyBinding
import com.comforthotelbookingapp.app.modules.homescreen.`data`.model.SixtyRowModel
import kotlin.Int
import kotlin.collections.List

class SixtyAdapter(
  var list: List<SixtyRowModel>
) : RecyclerView.Adapter<SixtyAdapter.RowSixtyVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSixtyVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_sixty,parent,false)
    return RowSixtyVH(view)
  }

  override fun onBindViewHolder(holder: RowSixtyVH, position: Int) {
    val sixtyRowModel = SixtyRowModel()
    // TODO uncomment following line after integration with data source
    // val sixtyRowModel = list[position]
    holder.binding.sixtyRowModel = sixtyRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SixtyRowModel>) {
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
      item: SixtyRowModel
    ) {
    }
  }

  inner class RowSixtyVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSixtyBinding = RowSixtyBinding.bind(itemView)
  }
}
