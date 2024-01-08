package com.blogapp.app.modules.explore.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.blogapp.app.R
import com.blogapp.app.databinding.RowStories1Binding
import com.blogapp.app.modules.explore.`data`.model.Stories1RowModel
import kotlin.Int
import kotlin.collections.List

class StoriesAdapter(
  var list: List<Stories1RowModel>
) : RecyclerView.Adapter<StoriesAdapter.RowStories1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowStories1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_stories1,parent,false)
    return RowStories1VH(view)
  }

  override fun onBindViewHolder(holder: RowStories1VH, position: Int) {
    val stories1RowModel = Stories1RowModel()
    // TODO uncomment following line after integration with data source
    // val stories1RowModel = list[position]
    holder.binding.stories1RowModel = stories1RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Stories1RowModel>) {
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
      item: Stories1RowModel
    ) {
    }
  }

  inner class RowStories1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowStories1Binding = RowStories1Binding.bind(itemView)
  }
}
