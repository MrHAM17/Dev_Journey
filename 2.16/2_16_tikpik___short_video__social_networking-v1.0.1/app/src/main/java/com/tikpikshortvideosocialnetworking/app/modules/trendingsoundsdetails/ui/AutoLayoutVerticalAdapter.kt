package com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayoutvertical4Binding
import com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.`data`.model.Autolayoutvertical4RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutVerticalAdapter(
  var list: List<Autolayoutvertical4RowModel>
) : RecyclerView.Adapter<AutoLayoutVerticalAdapter.RowAutolayoutvertical4VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayoutvertical4VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayoutvertical4,parent,false)
    return RowAutolayoutvertical4VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayoutvertical4VH, position: Int) {
    val autolayoutvertical4RowModel = Autolayoutvertical4RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayoutvertical4RowModel = list[position]
    holder.binding.autolayoutvertical4RowModel = autolayoutvertical4RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayoutvertical4RowModel>) {
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
      item: Autolayoutvertical4RowModel
    ) {
    }
  }

  inner class RowAutolayoutvertical4VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayoutvertical4Binding = RowAutolayoutvertical4Binding.bind(itemView)
  }
}
