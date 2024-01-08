package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayoutvertical5Binding
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.`data`.model.Autolayoutvertical5RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutVerticalAdapter(
  var list: List<Autolayoutvertical5RowModel>
) : RecyclerView.Adapter<AutoLayoutVerticalAdapter.RowAutolayoutvertical5VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayoutvertical5VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayoutvertical5,parent,false)
    return RowAutolayoutvertical5VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayoutvertical5VH, position: Int) {
    val autolayoutvertical5RowModel = Autolayoutvertical5RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayoutvertical5RowModel = list[position]
    holder.binding.autolayoutvertical5RowModel = autolayoutvertical5RowModel
  }

  override fun getItemCount(): Int = 9
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayoutvertical5RowModel>) {
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
      item: Autolayoutvertical5RowModel
    ) {
    }
  }

  inner class RowAutolayoutvertical5VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayoutvertical5Binding = RowAutolayoutvertical5Binding.bind(itemView)
  }
}
