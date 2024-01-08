package com.moviestreaming.app.modules.detailpagenine.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies1Binding
import com.moviestreaming.app.modules.detailpagenine.`data`.model.Movies1RowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<Movies1RowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMovies1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies1,parent,false)
    return RowMovies1VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies1VH, position: Int) {
    val movies1RowModel = Movies1RowModel()
    // TODO uncomment following line after integration with data source
    // val movies1RowModel = list[position]
    holder.binding.movies1RowModel = movies1RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies1RowModel>) {
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
      item: Movies1RowModel
    ) {
    }
  }

  inner class RowMovies1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies1Binding = RowMovies1Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies1RowModel())
      }
    }
  }
}
