package com.moviestreaming.app.modules.explorenine.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowExplorenineBinding
import com.moviestreaming.app.modules.explorenine.`data`.model.ExplorenineRowModel
import kotlin.Int
import kotlin.collections.List

class ExploreNineAdapter(
  var list: List<ExplorenineRowModel>
) : RecyclerView.Adapter<ExploreNineAdapter.RowExplorenineVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowExplorenineVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_explorenine,parent,false)
    return RowExplorenineVH(view)
  }

  override fun onBindViewHolder(holder: RowExplorenineVH, position: Int) {
    val explorenineRowModel = ExplorenineRowModel()
    // TODO uncomment following line after integration with data source
    // val explorenineRowModel = list[position]
    holder.binding.explorenineRowModel = explorenineRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ExplorenineRowModel>) {
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
      item: ExplorenineRowModel
    ) {
    }
  }

  inner class RowExplorenineVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowExplorenineBinding = RowExplorenineBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ExplorenineRowModel())
      }
    }
  }
}
