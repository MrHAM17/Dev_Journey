package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayouthorizontal3Binding
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model.Autolayouthorizontal3RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutHorizontalAdapter(
  var list: List<Autolayouthorizontal3RowModel>
) : RecyclerView.Adapter<AutoLayoutHorizontalAdapter.RowAutolayouthorizontal3VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayouthorizontal3VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayouthorizontal3,parent,false)
    return RowAutolayouthorizontal3VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayouthorizontal3VH, position: Int) {
    val autolayouthorizontal3RowModel = Autolayouthorizontal3RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayouthorizontal3RowModel = list[position]
    holder.binding.autolayouthorizontal3RowModel = autolayouthorizontal3RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayouthorizontal3RowModel>) {
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
      item: Autolayouthorizontal3RowModel
    ) {
    }
  }

  inner class RowAutolayouthorizontal3VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayouthorizontal3Binding = RowAutolayouthorizontal3Binding.bind(itemView)
  }
}
