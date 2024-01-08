package com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowTrendingnowBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.`data`.model.TrendingnowRowModel
import kotlin.Int
import kotlin.collections.List

class TrendingNowAdapter(
  var list: List<TrendingnowRowModel>
) : RecyclerView.Adapter<TrendingNowAdapter.RowTrendingnowVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTrendingnowVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_trendingnow,parent,false)
    return RowTrendingnowVH(view)
  }

  override fun onBindViewHolder(holder: RowTrendingnowVH, position: Int) {
    val trendingnowRowModel = TrendingnowRowModel()
    // TODO uncomment following line after integration with data source
    // val trendingnowRowModel = list[position]
    holder.binding.trendingnowRowModel = trendingnowRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TrendingnowRowModel>) {
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
      item: TrendingnowRowModel
    ) {
    }
  }

  inner class RowTrendingnowVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTrendingnowBinding = RowTrendingnowBinding.bind(itemView)
  }
}
