package com.moviestreaming.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials3Binding
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials3RowModel
import kotlin.Int
import kotlin.collections.List

class Specials3Adapter(
  var list: List<Specials3RowModel>
) : RecyclerView.Adapter<Specials3Adapter.RowSpecials3VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials3VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials3,parent,false)
    return RowSpecials3VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials3VH, position: Int) {
    val specials3RowModel = Specials3RowModel()
    // TODO uncomment following line after integration with data source
    // val specials3RowModel = list[position]
    holder.binding.specials3RowModel = specials3RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials3RowModel>) {
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
      item: Specials3RowModel
    ) {
    }
  }

  inner class RowSpecials3VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials3Binding = RowSpecials3Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials3RowModel())
      }
    }
  }
}
