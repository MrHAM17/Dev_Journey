package com.moviestreaming.app.modules.searchseven.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSearchsevenBinding
import com.moviestreaming.app.modules.searchseven.`data`.model.SearchsevenRowModel
import kotlin.Int
import kotlin.collections.List

class SearchSevenAdapter(
  var list: List<SearchsevenRowModel>
) : RecyclerView.Adapter<SearchSevenAdapter.RowSearchsevenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchsevenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchseven,parent,false)
    return RowSearchsevenVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchsevenVH, position: Int) {
    val searchsevenRowModel = SearchsevenRowModel()
    // TODO uncomment following line after integration with data source
    // val searchsevenRowModel = list[position]
    holder.binding.searchsevenRowModel = searchsevenRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchsevenRowModel>) {
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
      item: SearchsevenRowModel
    ) {
    }
  }

  inner class RowSearchsevenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchsevenBinding = RowSearchsevenBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SearchsevenRowModel())
      }
    }
  }
}
