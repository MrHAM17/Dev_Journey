package com.moviestreaming.app.modules.exploreten.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowTrending2Binding
import com.moviestreaming.app.modules.exploreten.`data`.model.Trending2RowModel
import kotlin.Int
import kotlin.collections.List

class Trending2Adapter(
  var list: List<Trending2RowModel>
) : RecyclerView.Adapter<Trending2Adapter.RowTrending2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTrending2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_trending2,parent,false)
    return RowTrending2VH(view)
  }

  override fun onBindViewHolder(holder: RowTrending2VH, position: Int) {
    val trending2RowModel = Trending2RowModel()
    // TODO uncomment following line after integration with data source
    // val trending2RowModel = list[position]
    holder.binding.trending2RowModel = trending2RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Trending2RowModel>) {
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
      item: Trending2RowModel
    ) {
    }
  }

  inner class RowTrending2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTrending2Binding = RowTrending2Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Trending2RowModel())
      }
    }
  }
}
