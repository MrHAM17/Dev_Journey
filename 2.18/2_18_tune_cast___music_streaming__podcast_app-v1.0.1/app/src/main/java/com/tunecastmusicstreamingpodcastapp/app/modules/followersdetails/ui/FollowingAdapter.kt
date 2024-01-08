package com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowFollowing1Binding
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model.Following1RowModel
import kotlin.Int
import kotlin.collections.List

class FollowingAdapter(
  var list: List<Following1RowModel>
) : RecyclerView.Adapter<FollowingAdapter.RowFollowing1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFollowing1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_following1,parent,false)
    return RowFollowing1VH(view)
  }

  override fun onBindViewHolder(holder: RowFollowing1VH, position: Int) {
    val following1RowModel = Following1RowModel()
    // TODO uncomment following line after integration with data source
    // val following1RowModel = list[position]
    holder.binding.following1RowModel = following1RowModel
  }

  override fun getItemCount(): Int = 1
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Following1RowModel>) {
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
      item: Following1RowModel
    ) {
    }
  }

  inner class RowFollowing1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFollowing1Binding = RowFollowing1Binding.bind(itemView)
    init {
      binding.btnFollowing.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Following1RowModel())
      }
    }
  }
}
