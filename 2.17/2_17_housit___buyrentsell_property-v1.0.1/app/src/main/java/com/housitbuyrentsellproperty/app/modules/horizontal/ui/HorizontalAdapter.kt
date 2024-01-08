package com.housitbuyrentsellproperty.app.modules.horizontal.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowHorizontalBinding
import com.housitbuyrentsellproperty.app.modules.horizontal.`data`.model.HorizontalRowModel
import kotlin.Int
import kotlin.collections.List

class HorizontalAdapter(
  var list: List<HorizontalRowModel>
) : RecyclerView.Adapter<HorizontalAdapter.RowHorizontalVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowHorizontalVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_horizontal,parent,false)
    return RowHorizontalVH(view)
  }

  override fun onBindViewHolder(holder: RowHorizontalVH, position: Int) {
    val horizontalRowModel = HorizontalRowModel()
    // TODO uncomment following line after integration with data source
    // val horizontalRowModel = list[position]
    holder.binding.horizontalRowModel = horizontalRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<HorizontalRowModel>) {
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
      item: HorizontalRowModel
    ) {
    }
  }

  inner class RowHorizontalVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowHorizontalBinding = RowHorizontalBinding.bind(itemView)
    init {
      binding.btnVilla.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, HorizontalRowModel())
      }
    }
  }
}
