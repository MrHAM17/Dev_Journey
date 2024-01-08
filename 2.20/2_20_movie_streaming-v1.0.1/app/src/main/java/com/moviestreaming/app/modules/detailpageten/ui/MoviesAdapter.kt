package com.moviestreaming.app.modules.detailpageten.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies2Binding
import com.moviestreaming.app.modules.detailpageten.`data`.model.Movies2RowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<Movies2RowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMovies2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies2,parent,false)
    return RowMovies2VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies2VH, position: Int) {
    val movies2RowModel = Movies2RowModel()
    // TODO uncomment following line after integration with data source
    // val movies2RowModel = list[position]
    holder.binding.movies2RowModel = movies2RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies2RowModel>) {
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
      item: Movies2RowModel
    ) {
    }
  }

  inner class RowMovies2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies2Binding = RowMovies2Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies2RowModel())
      }
    }
  }
}
