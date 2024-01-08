package com.socialsocialnetworking.app.modules.search.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.databinding.RowRecentsearchesBinding
import com.socialsocialnetworking.app.modules.search.`data`.model.RecentsearchesRowModel
import kotlin.Int
import kotlin.collections.List

class RecentSearchesAdapter(
  var list: List<RecentsearchesRowModel>
) : RecyclerView.Adapter<RecentSearchesAdapter.RowRecentsearchesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowRecentsearchesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_recentsearches,parent,false)
    return RowRecentsearchesVH(view)
  }

  override fun onBindViewHolder(holder: RowRecentsearchesVH, position: Int) {
    val recentsearchesRowModel = RecentsearchesRowModel()
    // TODO uncomment following line after integration with data source
    // val recentsearchesRowModel = list[position]
    holder.binding.recentsearchesRowModel = recentsearchesRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<RecentsearchesRowModel>) {
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
      item: RecentsearchesRowModel
    ) {
    }
  }

  inner class RowRecentsearchesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowRecentsearchesBinding = RowRecentsearchesBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, RecentsearchesRowModel())
      }
    }
  }
}
