package com.housitbuyrentsellproperty.app.modules.exampledata.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayoutBinding
import com.housitbuyrentsellproperty.app.modules.exampledata.`data`.model.LayoutRowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<LayoutRowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayoutVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayoutVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout,parent,false)
    return RowLayoutVH(view)
  }

  override fun onBindViewHolder(holder: RowLayoutVH, position: Int) {
    val layoutRowModel = LayoutRowModel()
    // TODO uncomment following line after integration with data source
    // val layoutRowModel = list[position]
    holder.binding.layoutRowModel = layoutRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<LayoutRowModel>) {
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
      item: LayoutRowModel
    ) {
    }
  }

  inner class RowLayoutVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayoutBinding = RowLayoutBinding.bind(itemView)
    init {
      binding.btnApartment.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, LayoutRowModel())
      }
    }
  }
}
