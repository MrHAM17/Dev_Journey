package com.housitbuyrentsellproperty.app.modules.propertydetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowPropertydetailsBinding
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.PropertydetailsRowModel
import kotlin.Int
import kotlin.collections.List

class PropertyDetailsAdapter(
  var list: List<PropertydetailsRowModel>
) : RecyclerView.Adapter<PropertyDetailsAdapter.RowPropertydetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPropertydetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_propertydetails,parent,false)
    return RowPropertydetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowPropertydetailsVH, position: Int) {
    val propertydetailsRowModel = PropertydetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val propertydetailsRowModel = list[position]
    holder.binding.propertydetailsRowModel = propertydetailsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PropertydetailsRowModel>) {
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
      item: PropertydetailsRowModel
    ) {
    }
  }

  inner class RowPropertydetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPropertydetailsBinding = RowPropertydetailsBinding.bind(itemView)
  }
}
