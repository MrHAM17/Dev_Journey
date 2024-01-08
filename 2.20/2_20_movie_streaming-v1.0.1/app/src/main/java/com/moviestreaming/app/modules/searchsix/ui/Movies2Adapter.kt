package com.moviestreaming.app.modules.searchsix.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies9Binding
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies9RowModel
import kotlin.Int
import kotlin.collections.List

class Movies2Adapter(
  var list: List<Movies9RowModel>
) : RecyclerView.Adapter<Movies2Adapter.RowMovies9VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies9VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies9,parent,false)
    return RowMovies9VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies9VH, position: Int) {
    val movies9RowModel = Movies9RowModel()
    // TODO uncomment following line after integration with data source
    // val movies9RowModel = list[position]
    holder.binding.movies9RowModel = movies9RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies9RowModel>) {
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
      item: Movies9RowModel
    ) {
    }
  }

  inner class RowMovies9VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies9Binding = RowMovies9Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies9RowModel())
      }
    }
  }
}
