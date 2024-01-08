package com.moviestreaming.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials5Binding
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials5RowModel
import kotlin.Int
import kotlin.collections.List

class Specials5Adapter(
  var list: List<Specials5RowModel>
) : RecyclerView.Adapter<Specials5Adapter.RowSpecials5VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials5VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials5,parent,false)
    return RowSpecials5VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials5VH, position: Int) {
    val specials5RowModel = Specials5RowModel()
    // TODO uncomment following line after integration with data source
    // val specials5RowModel = list[position]
    holder.binding.specials5RowModel = specials5RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials5RowModel>) {
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
      item: Specials5RowModel
    ) {
    }
  }

  inner class RowSpecials5VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials5Binding = RowSpecials5Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials5RowModel())
      }
    }
  }
}
