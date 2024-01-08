package com.moviestreaming.app.modules.searchsix.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies8Binding
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies8RowModel
import kotlin.Int
import kotlin.collections.List

class Movies1Adapter(
  var list: List<Movies8RowModel>
) : RecyclerView.Adapter<Movies1Adapter.RowMovies8VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies8VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies8,parent,false)
    return RowMovies8VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies8VH, position: Int) {
    val movies8RowModel = Movies8RowModel()
    // TODO uncomment following line after integration with data source
    // val movies8RowModel = list[position]
    holder.binding.movies8RowModel = movies8RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies8RowModel>) {
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
      item: Movies8RowModel
    ) {
    }
  }

  inner class RowMovies8VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies8Binding = RowMovies8Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies8RowModel())
      }
    }
  }
}
