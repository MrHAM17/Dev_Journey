package com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayoutvertical6Binding
import com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.`data`.model.Autolayoutvertical6RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutVerticalAdapter(
  var list: List<Autolayoutvertical6RowModel>
) : RecyclerView.Adapter<AutoLayoutVerticalAdapter.RowAutolayoutvertical6VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayoutvertical6VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayoutvertical6,parent,false)
    return RowAutolayoutvertical6VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayoutvertical6VH, position: Int) {
    val autolayoutvertical6RowModel = Autolayoutvertical6RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayoutvertical6RowModel = list[position]
    holder.binding.autolayoutvertical6RowModel = autolayoutvertical6RowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayoutvertical6RowModel>) {
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
      item: Autolayoutvertical6RowModel
    ) {
    }
  }

  inner class RowAutolayoutvertical6VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayoutvertical6Binding = RowAutolayoutvertical6Binding.bind(itemView)
  }
}
