package com.moviestreaming.app.modules.searchnine.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSearchnineBinding
import com.moviestreaming.app.modules.searchnine.`data`.model.SearchnineRowModel
import kotlin.Int
import kotlin.collections.List

class SearchNineAdapter(
  var list: List<SearchnineRowModel>
) : RecyclerView.Adapter<SearchNineAdapter.RowSearchnineVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchnineVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchnine,parent,false)
    return RowSearchnineVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchnineVH, position: Int) {
    val searchnineRowModel = SearchnineRowModel()
    // TODO uncomment following line after integration with data source
    // val searchnineRowModel = list[position]
    holder.binding.searchnineRowModel = searchnineRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchnineRowModel>) {
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
      item: SearchnineRowModel
    ) {
    }
  }

  inner class RowSearchnineVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchnineBinding = RowSearchnineBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SearchnineRowModel())
      }
    }
  }
}
