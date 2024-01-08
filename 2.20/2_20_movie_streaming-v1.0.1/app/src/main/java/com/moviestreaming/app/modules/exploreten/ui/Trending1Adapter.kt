package com.moviestreaming.app.modules.exploreten.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowTrending1Binding
import com.moviestreaming.app.modules.exploreten.`data`.model.Trending1RowModel
import kotlin.Int
import kotlin.collections.List

class Trending1Adapter(
  var list: List<Trending1RowModel>
) : RecyclerView.Adapter<Trending1Adapter.RowTrending1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTrending1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_trending1,parent,false)
    return RowTrending1VH(view)
  }

  override fun onBindViewHolder(holder: RowTrending1VH, position: Int) {
    val trending1RowModel = Trending1RowModel()
    // TODO uncomment following line after integration with data source
    // val trending1RowModel = list[position]
    holder.binding.trending1RowModel = trending1RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Trending1RowModel>) {
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
      item: Trending1RowModel
    ) {
    }
  }

  inner class RowTrending1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTrending1Binding = RowTrending1Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Trending1RowModel())
      }
    }
  }
}
