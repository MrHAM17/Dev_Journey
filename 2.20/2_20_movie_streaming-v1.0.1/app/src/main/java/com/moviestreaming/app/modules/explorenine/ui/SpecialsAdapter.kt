package com.moviestreaming.app.modules.explorenine.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials8Binding
import com.moviestreaming.app.modules.explorenine.`data`.model.Specials8RowModel
import kotlin.Int
import kotlin.collections.List

class SpecialsAdapter(
  var list: List<Specials8RowModel>
) : RecyclerView.Adapter<SpecialsAdapter.RowSpecials8VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials8VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials8,parent,false)
    return RowSpecials8VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials8VH, position: Int) {
    val specials8RowModel = Specials8RowModel()
    // TODO uncomment following line after integration with data source
    // val specials8RowModel = list[position]
    holder.binding.specials8RowModel = specials8RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials8RowModel>) {
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
      item: Specials8RowModel
    ) {
    }
  }

  inner class RowSpecials8VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials8Binding = RowSpecials8Binding.bind(itemView)
    init {
      binding.imageDrama.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials8RowModel())
      }
    }
  }
}
