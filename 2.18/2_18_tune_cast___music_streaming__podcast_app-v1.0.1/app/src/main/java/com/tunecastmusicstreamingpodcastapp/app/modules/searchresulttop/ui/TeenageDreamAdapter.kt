package com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowTeenagedreamBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model.TeenagedreamRowModel
import kotlin.Int
import kotlin.collections.List

class TeenageDreamAdapter(
  var list: List<TeenagedreamRowModel>
) : RecyclerView.Adapter<TeenageDreamAdapter.RowTeenagedreamVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTeenagedreamVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_teenagedream,parent,false)
    return RowTeenagedreamVH(view)
  }

  override fun onBindViewHolder(holder: RowTeenagedreamVH, position: Int) {
    val teenagedreamRowModel = TeenagedreamRowModel()
    // TODO uncomment following line after integration with data source
    // val teenagedreamRowModel = list[position]
    holder.binding.teenagedreamRowModel = teenagedreamRowModel
  }

  override fun getItemCount(): Int = 1
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TeenagedreamRowModel>) {
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
      item: TeenagedreamRowModel
    ) {
    }
  }

  inner class RowTeenagedreamVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTeenagedreamBinding = RowTeenagedreamBinding.bind(itemView)
  }
}
