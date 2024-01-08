package com.tunecastmusicstreamingpodcastapp.app.modules.followartists.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowFollowartistsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.model.FollowartistsRowModel
import kotlin.Int
import kotlin.collections.List

class FollowArtistsAdapter(
  var list: List<FollowartistsRowModel>
) : RecyclerView.Adapter<FollowArtistsAdapter.RowFollowartistsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFollowartistsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_followartists,parent,false)
    return RowFollowartistsVH(view)
  }

  override fun onBindViewHolder(holder: RowFollowartistsVH, position: Int) {
    val followartistsRowModel = FollowartistsRowModel()
    // TODO uncomment following line after integration with data source
    // val followartistsRowModel = list[position]
    holder.binding.followartistsRowModel = followartistsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FollowartistsRowModel>) {
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
      item: FollowartistsRowModel
    ) {
    }
  }

  inner class RowFollowartistsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFollowartistsBinding = RowFollowartistsBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FollowartistsRowModel())
      }
    }
  }
}
