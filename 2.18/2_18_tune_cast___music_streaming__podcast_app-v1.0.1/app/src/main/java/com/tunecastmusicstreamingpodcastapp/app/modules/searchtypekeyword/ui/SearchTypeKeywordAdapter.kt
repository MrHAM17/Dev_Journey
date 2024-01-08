package com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSearchtypekeywordBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.model.SearchtypekeywordRowModel
import kotlin.Int
import kotlin.collections.List

class SearchTypeKeywordAdapter(
  var list: List<SearchtypekeywordRowModel>
) : RecyclerView.Adapter<SearchTypeKeywordAdapter.RowSearchtypekeywordVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchtypekeywordVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchtypekeyword,parent,false)
    return RowSearchtypekeywordVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchtypekeywordVH, position: Int) {
    val searchtypekeywordRowModel = SearchtypekeywordRowModel()
    // TODO uncomment following line after integration with data source
    // val searchtypekeywordRowModel = list[position]
    holder.binding.searchtypekeywordRowModel = searchtypekeywordRowModel
  }

  override fun getItemCount(): Int = 8
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchtypekeywordRowModel>) {
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
      item: SearchtypekeywordRowModel
    ) {
    }
  }

  inner class RowSearchtypekeywordVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchtypekeywordBinding = RowSearchtypekeywordBinding.bind(itemView)
  }
}
