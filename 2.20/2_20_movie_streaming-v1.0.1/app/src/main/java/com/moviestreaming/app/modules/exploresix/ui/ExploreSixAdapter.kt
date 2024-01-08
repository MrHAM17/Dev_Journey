package com.moviestreaming.app.modules.exploresix.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowExploresixBinding
import com.moviestreaming.app.modules.exploresix.`data`.model.ExploresixRowModel
import kotlin.Int
import kotlin.collections.List

class ExploreSixAdapter(
  var list: List<ExploresixRowModel>
) : RecyclerView.Adapter<ExploreSixAdapter.RowExploresixVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowExploresixVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_exploresix,parent,false)
    return RowExploresixVH(view)
  }

  override fun onBindViewHolder(holder: RowExploresixVH, position: Int) {
    val exploresixRowModel = ExploresixRowModel()
    // TODO uncomment following line after integration with data source
    // val exploresixRowModel = list[position]
    holder.binding.exploresixRowModel = exploresixRowModel
  }

  override fun getItemCount(): Int = 8
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ExploresixRowModel>) {
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
      item: ExploresixRowModel
    ) {
    }
  }

  inner class RowExploresixVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowExploresixBinding = RowExploresixBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ExploresixRowModel())
      }
    }
  }
}
