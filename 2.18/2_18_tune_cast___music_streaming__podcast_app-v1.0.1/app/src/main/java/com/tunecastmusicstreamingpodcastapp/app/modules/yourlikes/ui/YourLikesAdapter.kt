package com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowYourlikesBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.`data`.model.YourlikesRowModel
import kotlin.Int
import kotlin.collections.List

class YourLikesAdapter(
  var list: List<YourlikesRowModel>
) : RecyclerView.Adapter<YourLikesAdapter.RowYourlikesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowYourlikesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_yourlikes,parent,false)
    return RowYourlikesVH(view)
  }

  override fun onBindViewHolder(holder: RowYourlikesVH, position: Int) {
    val yourlikesRowModel = YourlikesRowModel()
    // TODO uncomment following line after integration with data source
    // val yourlikesRowModel = list[position]
    holder.binding.yourlikesRowModel = yourlikesRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<YourlikesRowModel>) {
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
      item: YourlikesRowModel
    ) {
    }
  }

  inner class RowYourlikesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowYourlikesBinding = RowYourlikesBinding.bind(itemView)
  }
}
