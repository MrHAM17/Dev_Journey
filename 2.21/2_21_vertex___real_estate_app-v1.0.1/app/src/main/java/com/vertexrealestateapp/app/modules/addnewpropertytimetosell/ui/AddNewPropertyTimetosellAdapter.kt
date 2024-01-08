package com.vertexrealestateapp.app.modules.addnewpropertytimetosell.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowAddnewpropertytimetosellBinding
import com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.model.AddnewpropertytimetosellRowModel
import kotlin.Int
import kotlin.collections.List

class AddNewPropertyTimetosellAdapter(
  var list: List<AddnewpropertytimetosellRowModel>
) : RecyclerView.Adapter<AddNewPropertyTimetosellAdapter.RowAddnewpropertytimetosellVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAddnewpropertytimetosellVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_addnewpropertytimetosell,parent,false)
    return RowAddnewpropertytimetosellVH(view)
  }

  override fun onBindViewHolder(holder: RowAddnewpropertytimetosellVH, position: Int) {
    val addnewpropertytimetosellRowModel = AddnewpropertytimetosellRowModel()
    // TODO uncomment following line after integration with data source
    // val addnewpropertytimetosellRowModel = list[position]
    holder.binding.addnewpropertytimetosellRowModel = addnewpropertytimetosellRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AddnewpropertytimetosellRowModel>) {
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
      item: AddnewpropertytimetosellRowModel
    ) {
    }
  }

  inner class RowAddnewpropertytimetosellVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAddnewpropertytimetosellBinding =
        RowAddnewpropertytimetosellBinding.bind(itemView)
  }
}
