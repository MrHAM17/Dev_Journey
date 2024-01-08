package com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayouthorizontalBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.model.AutolayouthorizontalRowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutHorizontalAdapter(
  var list: List<AutolayouthorizontalRowModel>
) : RecyclerView.Adapter<AutoLayoutHorizontalAdapter.RowAutolayouthorizontalVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayouthorizontalVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayouthorizontal,parent,false)
    return RowAutolayouthorizontalVH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayouthorizontalVH, position: Int) {
    val autolayouthorizontalRowModel = AutolayouthorizontalRowModel()
    // TODO uncomment following line after integration with data source
    // val autolayouthorizontalRowModel = list[position]
    holder.binding.autolayouthorizontalRowModel = autolayouthorizontalRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AutolayouthorizontalRowModel>) {
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
      item: AutolayouthorizontalRowModel
    ) {
    }
  }

  inner class RowAutolayouthorizontalVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayouthorizontalBinding = RowAutolayouthorizontalBinding.bind(itemView)
  }
}
