package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayouthorizontal4Binding
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model.Autolayouthorizontal4RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutHorizontal1Adapter(
  var list: List<Autolayouthorizontal4RowModel>
) : RecyclerView.Adapter<AutoLayoutHorizontal1Adapter.RowAutolayouthorizontal4VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayouthorizontal4VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayouthorizontal4,parent,false)
    return RowAutolayouthorizontal4VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayouthorizontal4VH, position: Int) {
    val autolayouthorizontal4RowModel = Autolayouthorizontal4RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayouthorizontal4RowModel = list[position]
    holder.binding.autolayouthorizontal4RowModel = autolayouthorizontal4RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayouthorizontal4RowModel>) {
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
      item: Autolayouthorizontal4RowModel
    ) {
    }
  }

  inner class RowAutolayouthorizontal4VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayouthorizontal4Binding = RowAutolayouthorizontal4Binding.bind(itemView)
  }
}
