package com.moviestreaming.app.modules.searchten.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSearchtenBinding
import com.moviestreaming.app.modules.searchten.`data`.model.SearchtenRowModel
import kotlin.Int
import kotlin.collections.List

class SearchTenAdapter(
  var list: List<SearchtenRowModel>
) : RecyclerView.Adapter<SearchTenAdapter.RowSearchtenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchtenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchten,parent,false)
    return RowSearchtenVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchtenVH, position: Int) {
    val searchtenRowModel = SearchtenRowModel()
    // TODO uncomment following line after integration with data source
    // val searchtenRowModel = list[position]
    holder.binding.searchtenRowModel = searchtenRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchtenRowModel>) {
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
      item: SearchtenRowModel
    ) {
    }
  }

  inner class RowSearchtenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchtenBinding = RowSearchtenBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SearchtenRowModel())
      }
    }
  }
}
