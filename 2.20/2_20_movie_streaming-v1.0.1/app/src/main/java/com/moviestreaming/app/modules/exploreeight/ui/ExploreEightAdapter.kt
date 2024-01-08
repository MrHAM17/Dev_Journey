package com.moviestreaming.app.modules.exploreeight.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowExploreeightBinding
import com.moviestreaming.app.modules.exploreeight.`data`.model.ExploreeightRowModel
import kotlin.Int
import kotlin.collections.List

class ExploreEightAdapter(
  var list: List<ExploreeightRowModel>
) : RecyclerView.Adapter<ExploreEightAdapter.RowExploreeightVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowExploreeightVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_exploreeight,parent,false)
    return RowExploreeightVH(view)
  }

  override fun onBindViewHolder(holder: RowExploreeightVH, position: Int) {
    val exploreeightRowModel = ExploreeightRowModel()
    // TODO uncomment following line after integration with data source
    // val exploreeightRowModel = list[position]
    holder.binding.exploreeightRowModel = exploreeightRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ExploreeightRowModel>) {
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
      item: ExploreeightRowModel
    ) {
    }
  }

  inner class RowExploreeightVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowExploreeightBinding = RowExploreeightBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ExploreeightRowModel())
      }
    }
  }
}
