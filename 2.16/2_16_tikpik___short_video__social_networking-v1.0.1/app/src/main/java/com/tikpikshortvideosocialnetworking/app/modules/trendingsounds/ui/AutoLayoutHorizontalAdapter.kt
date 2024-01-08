package com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayouthorizontal1Binding
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model.Autolayouthorizontal1RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutHorizontalAdapter(
  var list: List<Autolayouthorizontal1RowModel>
) : RecyclerView.Adapter<AutoLayoutHorizontalAdapter.RowAutolayouthorizontal1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayouthorizontal1VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayouthorizontal1,parent,false)
    return RowAutolayouthorizontal1VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayouthorizontal1VH, position: Int) {
    val autolayouthorizontal1RowModel = Autolayouthorizontal1RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayouthorizontal1RowModel = list[position]
    holder.binding.autolayouthorizontal1RowModel = autolayouthorizontal1RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayouthorizontal1RowModel>) {
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
      item: Autolayouthorizontal1RowModel
    ) {
    }
  }

  inner class RowAutolayouthorizontal1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayouthorizontal1Binding = RowAutolayouthorizontal1Binding.bind(itemView)
  }
}
