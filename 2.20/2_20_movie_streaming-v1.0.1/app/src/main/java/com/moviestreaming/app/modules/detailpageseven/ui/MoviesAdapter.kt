package com.moviestreaming.app.modules.detailpageseven.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMoviesBinding
import com.moviestreaming.app.modules.detailpageseven.`data`.model.MoviesRowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<MoviesRowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMoviesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMoviesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies,parent,false)
    return RowMoviesVH(view)
  }

  override fun onBindViewHolder(holder: RowMoviesVH, position: Int) {
    val moviesRowModel = MoviesRowModel()
    // TODO uncomment following line after integration with data source
    // val moviesRowModel = list[position]
    holder.binding.moviesRowModel = moviesRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MoviesRowModel>) {
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
      item: MoviesRowModel
    ) {
    }
  }

  inner class RowMoviesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMoviesBinding = RowMoviesBinding.bind(itemView)
  }
}
