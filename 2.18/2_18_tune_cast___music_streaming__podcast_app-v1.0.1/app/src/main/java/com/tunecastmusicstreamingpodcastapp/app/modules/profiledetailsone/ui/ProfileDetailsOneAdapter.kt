package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowProfiledetailsoneBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.model.ProfiledetailsoneRowModel
import kotlin.Int
import kotlin.collections.List

class ProfileDetailsOneAdapter(
  var list: List<ProfiledetailsoneRowModel>
) : RecyclerView.Adapter<ProfileDetailsOneAdapter.RowProfiledetailsoneVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProfiledetailsoneVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_profiledetailsone,parent,false)
    return RowProfiledetailsoneVH(view)
  }

  override fun onBindViewHolder(holder: RowProfiledetailsoneVH, position: Int) {
    val profiledetailsoneRowModel = ProfiledetailsoneRowModel()
    // TODO uncomment following line after integration with data source
    // val profiledetailsoneRowModel = list[position]
    holder.binding.profiledetailsoneRowModel = profiledetailsoneRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ProfiledetailsoneRowModel>) {
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
      item: ProfiledetailsoneRowModel
    ) {
    }
  }

  inner class RowProfiledetailsoneVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProfiledetailsoneBinding = RowProfiledetailsoneBinding.bind(itemView)
  }
}
