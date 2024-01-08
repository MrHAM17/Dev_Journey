package com.vertexrealestateapp.app.modules.addnewpropertydetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowAddnewpropertydetailsBinding
import com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.model.AddnewpropertydetailsRowModel
import kotlin.Int
import kotlin.collections.List

class AddNewPropertyDetailsAdapter(
  var list: List<AddnewpropertydetailsRowModel>
) : RecyclerView.Adapter<AddNewPropertyDetailsAdapter.RowAddnewpropertydetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAddnewpropertydetailsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_addnewpropertydetails,parent,false)
    return RowAddnewpropertydetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowAddnewpropertydetailsVH, position: Int) {
    val addnewpropertydetailsRowModel = AddnewpropertydetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val addnewpropertydetailsRowModel = list[position]
    holder.binding.addnewpropertydetailsRowModel = addnewpropertydetailsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AddnewpropertydetailsRowModel>) {
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
      item: AddnewpropertydetailsRowModel
    ) {
    }
  }

  inner class RowAddnewpropertydetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAddnewpropertydetailsBinding = RowAddnewpropertydetailsBinding.bind(itemView)
  }
}
