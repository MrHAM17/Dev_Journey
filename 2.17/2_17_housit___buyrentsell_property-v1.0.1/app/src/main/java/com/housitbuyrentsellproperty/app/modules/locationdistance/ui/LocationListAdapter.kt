package com.housitbuyrentsellproperty.app.modules.locationdistance.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLocationlistBinding
import com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.model.LocationlistRowModel
import kotlin.Int
import kotlin.collections.List

class LocationListAdapter(
  var list: List<LocationlistRowModel>
) : RecyclerView.Adapter<LocationListAdapter.RowLocationlistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLocationlistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_locationlist,parent,false)
    return RowLocationlistVH(view)
  }

  override fun onBindViewHolder(holder: RowLocationlistVH, position: Int) {
    val locationlistRowModel = LocationlistRowModel()
    // TODO uncomment following line after integration with data source
    // val locationlistRowModel = list[position]
    holder.binding.locationlistRowModel = locationlistRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<LocationlistRowModel>) {
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
      item: LocationlistRowModel
    ) {
    }
  }

  inner class RowLocationlistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLocationlistBinding = RowLocationlistBinding.bind(itemView)
  }
}
