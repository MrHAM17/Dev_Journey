package com.moviestreaming.app.modules.detailpageeight.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies5Binding
import com.moviestreaming.app.modules.detailpageeight.`data`.model.Movies5RowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<Movies5RowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMovies5VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies5VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies5,parent,false)
    return RowMovies5VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies5VH, position: Int) {
    val movies5RowModel = Movies5RowModel()
    // TODO uncomment following line after integration with data source
    // val movies5RowModel = list[position]
    holder.binding.movies5RowModel = movies5RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies5RowModel>) {
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
      item: Movies5RowModel
    ) {
    }
  }

  inner class RowMovies5VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies5Binding = RowMovies5Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies5RowModel())
      }
    }
  }
}
