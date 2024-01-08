package com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayouthorizontal2Binding
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model.Autolayouthorizontal2RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutHorizontal1Adapter(
  var list: List<Autolayouthorizontal2RowModel>
) : RecyclerView.Adapter<AutoLayoutHorizontal1Adapter.RowAutolayouthorizontal2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayouthorizontal2VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayouthorizontal2,parent,false)
    return RowAutolayouthorizontal2VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayouthorizontal2VH, position: Int) {
    val autolayouthorizontal2RowModel = Autolayouthorizontal2RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayouthorizontal2RowModel = list[position]
    holder.binding.autolayouthorizontal2RowModel = autolayouthorizontal2RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayouthorizontal2RowModel>) {
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
      item: Autolayouthorizontal2RowModel
    ) {
    }
  }

  inner class RowAutolayouthorizontal2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayouthorizontal2Binding = RowAutolayouthorizontal2Binding.bind(itemView)
  }
}
