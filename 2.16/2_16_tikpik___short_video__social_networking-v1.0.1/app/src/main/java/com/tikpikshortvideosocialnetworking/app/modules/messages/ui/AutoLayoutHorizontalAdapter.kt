package com.tikpikshortvideosocialnetworking.app.modules.messages.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayouthorizontal5Binding
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model.Autolayouthorizontal5RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutHorizontalAdapter(
  var list: List<Autolayouthorizontal5RowModel>
) : RecyclerView.Adapter<AutoLayoutHorizontalAdapter.RowAutolayouthorizontal5VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayouthorizontal5VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayouthorizontal5,parent,false)
    return RowAutolayouthorizontal5VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayouthorizontal5VH, position: Int) {
    val autolayouthorizontal5RowModel = Autolayouthorizontal5RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayouthorizontal5RowModel = list[position]
    holder.binding.autolayouthorizontal5RowModel = autolayouthorizontal5RowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayouthorizontal5RowModel>) {
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
      item: Autolayouthorizontal5RowModel
    ) {
    }
  }

  inner class RowAutolayouthorizontal5VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayouthorizontal5Binding = RowAutolayouthorizontal5Binding.bind(itemView)
  }
}
