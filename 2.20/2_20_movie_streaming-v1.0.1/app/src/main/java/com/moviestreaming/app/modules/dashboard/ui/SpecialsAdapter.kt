package com.moviestreaming.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecialsBinding
import com.moviestreaming.app.modules.dashboard.`data`.model.SpecialsRowModel
import kotlin.Int
import kotlin.collections.List

class SpecialsAdapter(
  var list: List<SpecialsRowModel>
) : RecyclerView.Adapter<SpecialsAdapter.RowSpecialsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecialsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials,parent,false)
    return RowSpecialsVH(view)
  }

  override fun onBindViewHolder(holder: RowSpecialsVH, position: Int) {
    val specialsRowModel = SpecialsRowModel()
    // TODO uncomment following line after integration with data source
    // val specialsRowModel = list[position]
    holder.binding.specialsRowModel = specialsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SpecialsRowModel>) {
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
      item: SpecialsRowModel
    ) {
    }
  }

  inner class RowSpecialsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecialsBinding = RowSpecialsBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SpecialsRowModel())
      }
    }
  }
}
