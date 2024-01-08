package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowFiftynineBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model.FiftynineRowModel
import kotlin.Int
import kotlin.collections.List

class FiftyNineAdapter(
  var list: List<FiftynineRowModel>
) : RecyclerView.Adapter<FiftyNineAdapter.RowFiftynineVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFiftynineVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_fiftynine,parent,false)
    return RowFiftynineVH(view)
  }

  override fun onBindViewHolder(holder: RowFiftynineVH, position: Int) {
    val fiftynineRowModel = FiftynineRowModel()
    // TODO uncomment following line after integration with data source
    // val fiftynineRowModel = list[position]
    holder.binding.fiftynineRowModel = fiftynineRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FiftynineRowModel>) {
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
      item: FiftynineRowModel
    ) {
    }
  }

  inner class RowFiftynineVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFiftynineBinding = RowFiftynineBinding.bind(itemView)
  }
}
