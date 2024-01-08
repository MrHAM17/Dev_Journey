package com.musicplayer.app.modules.homepage.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.musicplayer.app.R
import com.musicplayer.app.databinding.RowNewreleaseslistBinding
import com.musicplayer.app.modules.homepage.`data`.model.NewreleaseslistRowModel
import kotlin.Int
import kotlin.collections.List

class NewReleasesListAdapter(
  var list: List<NewreleaseslistRowModel>
) : RecyclerView.Adapter<NewReleasesListAdapter.RowNewreleaseslistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowNewreleaseslistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_newreleaseslist,parent,false)
    return RowNewreleaseslistVH(view)
  }

  override fun onBindViewHolder(holder: RowNewreleaseslistVH, position: Int) {
    val newreleaseslistRowModel = NewreleaseslistRowModel()
    // TODO uncomment following line after integration with data source
    // val newreleaseslistRowModel = list[position]
    holder.binding.newreleaseslistRowModel = newreleaseslistRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<NewreleaseslistRowModel>) {
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
      item: NewreleaseslistRowModel
    ) {
    }
  }

  inner class RowNewreleaseslistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowNewreleaseslistBinding = RowNewreleaseslistBinding.bind(itemView)
  }
}
