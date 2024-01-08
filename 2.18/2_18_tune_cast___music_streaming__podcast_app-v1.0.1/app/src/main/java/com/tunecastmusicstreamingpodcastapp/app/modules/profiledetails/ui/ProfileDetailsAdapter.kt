package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowProfiledetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.model.ProfiledetailsRowModel
import kotlin.Int
import kotlin.collections.List

class ProfileDetailsAdapter(
  var list: List<ProfiledetailsRowModel>
) : RecyclerView.Adapter<ProfileDetailsAdapter.RowProfiledetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProfiledetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_profiledetails,parent,false)
    return RowProfiledetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowProfiledetailsVH, position: Int) {
    val profiledetailsRowModel = ProfiledetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val profiledetailsRowModel = list[position]
    holder.binding.profiledetailsRowModel = profiledetailsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ProfiledetailsRowModel>) {
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
      item: ProfiledetailsRowModel
    ) {
    }
  }

  inner class RowProfiledetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProfiledetailsBinding = RowProfiledetailsBinding.bind(itemView)
  }
}
