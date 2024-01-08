package com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayoutvertical2Binding
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model.Autolayoutvertical2RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutVerticalAdapter(
  var list: List<Autolayoutvertical2RowModel>
) : RecyclerView.Adapter<AutoLayoutVerticalAdapter.RowAutolayoutvertical2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayoutvertical2VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayoutvertical2,parent,false)
    return RowAutolayoutvertical2VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayoutvertical2VH, position: Int) {
    val autolayoutvertical2RowModel = Autolayoutvertical2RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayoutvertical2RowModel = list[position]
    holder.binding.autolayoutvertical2RowModel = autolayoutvertical2RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayoutvertical2RowModel>) {
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
      item: Autolayoutvertical2RowModel
    ) {
    }
  }

  inner class RowAutolayoutvertical2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayoutvertical2Binding = RowAutolayoutvertical2Binding.bind(itemView)
  }
}
