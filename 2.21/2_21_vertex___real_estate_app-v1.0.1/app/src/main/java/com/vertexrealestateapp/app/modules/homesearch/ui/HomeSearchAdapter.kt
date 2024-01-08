package com.vertexrealestateapp.app.modules.homesearch.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowHomesearchBinding
import com.vertexrealestateapp.app.modules.homesearch.`data`.model.HomesearchRowModel
import kotlin.Int
import kotlin.collections.List

class HomeSearchAdapter(
  var list: List<HomesearchRowModel>
) : RecyclerView.Adapter<HomeSearchAdapter.RowHomesearchVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowHomesearchVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_homesearch,parent,false)
    return RowHomesearchVH(view)
  }

  override fun onBindViewHolder(holder: RowHomesearchVH, position: Int) {
    val homesearchRowModel = HomesearchRowModel()
    // TODO uncomment following line after integration with data source
    // val homesearchRowModel = list[position]
    holder.binding.homesearchRowModel = homesearchRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<HomesearchRowModel>) {
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
      item: HomesearchRowModel
    ) {
    }
  }

  inner class RowHomesearchVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowHomesearchBinding = RowHomesearchBinding.bind(itemView)
  }
}
