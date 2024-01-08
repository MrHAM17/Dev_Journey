package com.housitbuyrentsellproperty.app.modules.editform.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowShapeBinding
import com.housitbuyrentsellproperty.app.modules.editform.`data`.model.ShapeRowModel
import kotlin.Int
import kotlin.collections.List

class ShapeAdapter(
  var list: List<ShapeRowModel>
) : RecyclerView.Adapter<ShapeAdapter.RowShapeVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowShapeVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_shape,parent,false)
    return RowShapeVH(view)
  }

  override fun onBindViewHolder(holder: RowShapeVH, position: Int) {
    val shapeRowModel = ShapeRowModel()
    // TODO uncomment following line after integration with data source
    // val shapeRowModel = list[position]
    holder.binding.shapeRowModel = shapeRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ShapeRowModel>) {
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
      item: ShapeRowModel
    ) {
    }
  }

  inner class RowShapeVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowShapeBinding = RowShapeBinding.bind(itemView)
  }
}
