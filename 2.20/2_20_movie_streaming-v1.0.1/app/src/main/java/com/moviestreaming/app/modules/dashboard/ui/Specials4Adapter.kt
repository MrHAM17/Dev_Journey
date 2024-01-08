package com.moviestreaming.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials4Binding
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials4RowModel
import kotlin.Int
import kotlin.collections.List

class Specials4Adapter(
  var list: List<Specials4RowModel>
) : RecyclerView.Adapter<Specials4Adapter.RowSpecials4VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials4VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials4,parent,false)
    return RowSpecials4VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials4VH, position: Int) {
    val specials4RowModel = Specials4RowModel()
    // TODO uncomment following line after integration with data source
    // val specials4RowModel = list[position]
    holder.binding.specials4RowModel = specials4RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials4RowModel>) {
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
      item: Specials4RowModel
    ) {
    }
  }

  inner class RowSpecials4VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials4Binding = RowSpecials4Binding.bind(itemView)
    init {
      binding.imageDrama.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials4RowModel())
      }
    }
  }
}
